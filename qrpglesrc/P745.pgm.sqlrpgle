**free

ctl-opt dftactgrp(*no);

dcl-pi P745;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P388.rpgleinc'

dcl-ds theTable extname('T388') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T388 LIMIT 1;

theCharVar = 'Hello from P745';
dsply theCharVar;
P10();
P466();
P388();
return;