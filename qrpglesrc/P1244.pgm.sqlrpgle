**free

ctl-opt dftactgrp(*no);

dcl-pi P1244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P558.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P1044.rpgleinc'

dcl-ds theTable extname('T317') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T317 LIMIT 1;

theCharVar = 'Hello from P1244';
dsply theCharVar;
P558();
P65();
P1044();
return;