**free

ctl-opt dftactgrp(*no);

dcl-pi P1261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds T32 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T32 FROM T32 LIMIT 1;

theCharVar = 'Hello from P1261';
dsply theCharVar;
P477();
P9();
P176();
return;