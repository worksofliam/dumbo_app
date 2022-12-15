**free

ctl-opt dftactgrp(*no);

dcl-pi P1350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1205.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'
/copy 'qrpgleref/P1177.rpgleinc'

dcl-ds theTable extname('T1047') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1047 LIMIT 1;

theCharVar = 'Hello from P1350';
dsply theCharVar;
P1205();
P322();
P1177();
return;