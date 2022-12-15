**free

ctl-opt dftactgrp(*no);

dcl-pi P4372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1916.rpgleinc'
/copy 'qrpgleref/P1617.rpgleinc'
/copy 'qrpgleref/P2338.rpgleinc'

dcl-ds T1057 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1057 FROM T1057 LIMIT 1;

theCharVar = 'Hello from P4372';
dsply theCharVar;
P1916();
P1617();
P2338();
return;