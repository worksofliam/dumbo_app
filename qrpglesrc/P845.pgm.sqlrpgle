**free

ctl-opt dftactgrp(*no);

dcl-pi P845;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P703.rpgleinc'
/copy 'qrpgleref/P536.rpgleinc'

dcl-ds T242 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T242 FROM T242 LIMIT 1;

theCharVar = 'Hello from P845';
dsply theCharVar;
P742();
P703();
P536();
return;