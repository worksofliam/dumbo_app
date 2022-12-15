**free

ctl-opt dftactgrp(*no);

dcl-pi P4544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P452.rpgleinc'
/copy 'qrpgleref/P1660.rpgleinc'
/copy 'qrpgleref/P3171.rpgleinc'

dcl-ds T879 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T879 FROM T879 LIMIT 1;

theCharVar = 'Hello from P4544';
dsply theCharVar;
P452();
P1660();
P3171();
return;