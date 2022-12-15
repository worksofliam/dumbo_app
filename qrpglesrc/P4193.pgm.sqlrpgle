**free

ctl-opt dftactgrp(*no);

dcl-pi P4193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P934.rpgleinc'
/copy 'qrpgleref/P3449.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'

dcl-ds theTable extname('T1144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1144 LIMIT 1;

theCharVar = 'Hello from P4193';
dsply theCharVar;
P934();
P3449();
P322();
return;