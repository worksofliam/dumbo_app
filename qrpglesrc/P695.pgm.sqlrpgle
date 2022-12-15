**free

ctl-opt dftactgrp(*no);

dcl-pi P695;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P634.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T1105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1105 LIMIT 1;

theCharVar = 'Hello from P695';
dsply theCharVar;
P443();
P634();
P28();
return;