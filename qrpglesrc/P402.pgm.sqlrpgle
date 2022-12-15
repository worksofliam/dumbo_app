**free

ctl-opt dftactgrp(*no);

dcl-pi P402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'

dcl-ds T124 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T124 FROM T124 LIMIT 1;

theCharVar = 'Hello from P402';
dsply theCharVar;
P114();
P41();
P284();
return;