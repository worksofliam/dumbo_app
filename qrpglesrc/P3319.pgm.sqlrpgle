**free

ctl-opt dftactgrp(*no);

dcl-pi P3319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1858.rpgleinc'
/copy 'qrpgleref/P1120.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds T575 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T575 FROM T575 LIMIT 1;

theCharVar = 'Hello from P3319';
dsply theCharVar;
P1858();
P1120();
P340();
return;