**free

ctl-opt dftactgrp(*no);

dcl-pi P1874;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P1438.rpgleinc'
/copy 'qrpgleref/P1728.rpgleinc'

dcl-ds T301 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T301 FROM T301 LIMIT 1;

theCharVar = 'Hello from P1874';
dsply theCharVar;
P221();
P1438();
P1728();
return;