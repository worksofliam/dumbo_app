**free

ctl-opt dftactgrp(*no);

dcl-pi P1980;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'

dcl-ds theTable extname('T86') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T86 LIMIT 1;

theCharVar = 'Hello from P1980';
dsply theCharVar;
P863();
P219();
P484();
return;