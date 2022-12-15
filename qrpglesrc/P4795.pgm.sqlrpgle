**free

ctl-opt dftactgrp(*no);

dcl-pi P4795;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4459.rpgleinc'
/copy 'qrpgleref/P4209.rpgleinc'
/copy 'qrpgleref/P1828.rpgleinc'

dcl-ds T872 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T872 FROM T872 LIMIT 1;

theCharVar = 'Hello from P4795';
dsply theCharVar;
P4459();
P4209();
P1828();
return;