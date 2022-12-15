**free

ctl-opt dftactgrp(*no);

dcl-pi P1176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P871.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T299') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T299 LIMIT 1;

theCharVar = 'Hello from P1176';
dsply theCharVar;
P871();
P208();
P68();
return;