**free

ctl-opt dftactgrp(*no);

dcl-pi P4947;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3269.rpgleinc'
/copy 'qrpgleref/P4341.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'

dcl-ds theTable extname('T49') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T49 LIMIT 1;

theCharVar = 'Hello from P4947';
dsply theCharVar;
P3269();
P4341();
P322();
return;