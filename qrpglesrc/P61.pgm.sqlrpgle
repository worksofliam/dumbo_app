**free

ctl-opt dftactgrp(*no);

dcl-pi P61;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds theTable extname('T103') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T103 LIMIT 1;

theCharVar = 'Hello from P61';
dsply theCharVar;
P22();
P38();
P15();
return;