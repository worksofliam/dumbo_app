**free

ctl-opt dftactgrp(*no);

dcl-pi P3650;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P967.rpgleinc'
/copy 'qrpgleref/P1401.rpgleinc'
/copy 'qrpgleref/P3319.rpgleinc'

dcl-ds theTable extname('T638') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T638 LIMIT 1;

theCharVar = 'Hello from P3650';
dsply theCharVar;
P967();
P1401();
P3319();
return;