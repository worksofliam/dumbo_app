**free

ctl-opt dftactgrp(*no);

dcl-pi P4747;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1548.rpgleinc'
/copy 'qrpgleref/P2405.rpgleinc'
/copy 'qrpgleref/P663.rpgleinc'

dcl-ds T956 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T956 FROM T956 LIMIT 1;

theCharVar = 'Hello from P4747';
dsply theCharVar;
P1548();
P2405();
P663();
return;