**free

ctl-opt dftactgrp(*no);

dcl-pi P939;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P540.rpgleinc'
/copy 'qrpgleref/P685.rpgleinc'
/copy 'qrpgleref/P893.rpgleinc'

dcl-ds theTable extname('T234') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T234 LIMIT 1;

theCharVar = 'Hello from P939';
dsply theCharVar;
P540();
P685();
P893();
return;