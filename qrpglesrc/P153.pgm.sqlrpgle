**free

ctl-opt dftactgrp(*no);

dcl-pi P153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds T579 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T579 FROM T579 LIMIT 1;

theCharVar = 'Hello from P153';
dsply theCharVar;
P33();
P101();
return;