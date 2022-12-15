**free

ctl-opt dftactgrp(*no);

dcl-pi P1829;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P1418.rpgleinc'
/copy 'qrpgleref/P660.rpgleinc'

dcl-ds T721 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T721 FROM T721 LIMIT 1;

theCharVar = 'Hello from P1829';
dsply theCharVar;
P526();
P1418();
P660();
return;