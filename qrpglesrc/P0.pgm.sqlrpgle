**free

ctl-opt dftactgrp(*no);

dcl-pi P0;
end-pi;

dcl-s theCharVar Char(52);


dcl-ds T197 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T197 FROM T197 LIMIT 1;

theCharVar = 'Hello from P0';
dsply theCharVar;
return;