**free

ctl-opt dftactgrp(*no);

dcl-pi P3666;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1198.rpgleinc'
/copy 'qrpgleref/P3079.rpgleinc'
/copy 'qrpgleref/P1002.rpgleinc'

dcl-ds T676 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T676 FROM T676 LIMIT 1;

theCharVar = 'Hello from P3666';
dsply theCharVar;
P1198();
P3079();
P1002();
return;