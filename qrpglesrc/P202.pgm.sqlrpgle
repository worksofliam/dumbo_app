**free

ctl-opt dftactgrp(*no);

dcl-pi P202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'

dcl-ds T0 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T0 FROM T0 LIMIT 1;

theCharVar = 'Hello from P202';
dsply theCharVar;
P201();
P177();
P108();
return;