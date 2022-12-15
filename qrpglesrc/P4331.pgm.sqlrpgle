**free

ctl-opt dftactgrp(*no);

dcl-pi P4331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P749.rpgleinc'
/copy 'qrpgleref/P389.rpgleinc'
/copy 'qrpgleref/P2991.rpgleinc'

dcl-ds T1422 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1422 FROM T1422 LIMIT 1;

theCharVar = 'Hello from P4331';
dsply theCharVar;
P749();
P389();
P2991();
return;