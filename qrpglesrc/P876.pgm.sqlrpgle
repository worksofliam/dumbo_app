**free

ctl-opt dftactgrp(*no);

dcl-pi P876;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P848.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T762 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T762 FROM T762 LIMIT 1;

theCharVar = 'Hello from P876';
dsply theCharVar;
P148();
P848();
P8();
return;