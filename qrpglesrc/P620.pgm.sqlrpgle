**free

ctl-opt dftactgrp(*no);

dcl-pi P620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P422.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'

dcl-ds theTable extname('T116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T116 LIMIT 1;

theCharVar = 'Hello from P620';
dsply theCharVar;
P422();
P288();
P496();
return;