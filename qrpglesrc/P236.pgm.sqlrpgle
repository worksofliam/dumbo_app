**free

ctl-opt dftactgrp(*no);

dcl-pi P236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'

dcl-ds T43 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T43 FROM T43 LIMIT 1;

theCharVar = 'Hello from P236';
dsply theCharVar;
P0();
P20();
P131();
return;