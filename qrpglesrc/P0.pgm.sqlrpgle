**free

ctl-opt dftactgrp(*no);

dcl-pi P0;
end-pi;

dcl-s theCharVar Char(52);


dcl-ds T773 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T773 FROM T773 LIMIT 1;

theCharVar = 'Hello from P0';
dsply theCharVar;
return;