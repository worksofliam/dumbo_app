**free

ctl-opt dftactgrp(*no);

dcl-pi P5547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4659.rpgleinc'
/copy 'qrpgleref/P5315.rpgleinc'
/copy 'qrpgleref/P1290.rpgleinc'

dcl-ds T994 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T994 FROM T994 LIMIT 1;

theCharVar = 'Hello from P5547';
dsply theCharVar;
P4659();
P5315();
P1290();
return;