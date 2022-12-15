**free

ctl-opt dftactgrp(*no);

dcl-pi P1352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1220.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P1246.rpgleinc'

dcl-ds theTable extname('T1147') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1147 LIMIT 1;

theCharVar = 'Hello from P1352';
dsply theCharVar;
P1220();
P148();
P1246();
return;