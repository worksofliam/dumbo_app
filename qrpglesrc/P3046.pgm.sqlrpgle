**free

ctl-opt dftactgrp(*no);

dcl-pi P3046;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P1732.rpgleinc'
/copy 'qrpgleref/P2079.rpgleinc'

dcl-ds theTable extname('T644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T644 LIMIT 1;

theCharVar = 'Hello from P3046';
dsply theCharVar;
P221();
P1732();
P2079();
return;