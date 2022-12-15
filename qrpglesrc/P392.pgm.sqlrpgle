**free

ctl-opt dftactgrp(*no);

dcl-pi P392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds T157 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T157 FROM T157 LIMIT 1;

theCharVar = 'Hello from P392';
dsply theCharVar;
P180();
P101();
P118();
return;