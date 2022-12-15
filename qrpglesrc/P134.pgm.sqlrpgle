**free

ctl-opt dftactgrp(*no);

dcl-pi P134;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds theTable extname('T212') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T212 LIMIT 1;

theCharVar = 'Hello from P134';
dsply theCharVar;
P33();
P10();
P121();
return;