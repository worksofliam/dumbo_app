**free

ctl-opt dftactgrp(*no);

dcl-pi P4319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P2021.rpgleinc'
/copy 'qrpgleref/P3867.rpgleinc'

dcl-ds theTable extname('T1304') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1304 LIMIT 1;

theCharVar = 'Hello from P4319';
dsply theCharVar;
P305();
P2021();
P3867();
return;