**free

ctl-opt dftactgrp(*no);

dcl-pi P4247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1935.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'

dcl-ds theTable extname('T1304') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1304 LIMIT 1;

theCharVar = 'Hello from P4247';
dsply theCharVar;
P1935();
P504();
P77();
return;