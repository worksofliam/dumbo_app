**free

ctl-opt dftactgrp(*no);

dcl-pi P2960;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2286.rpgleinc'
/copy 'qrpgleref/P1092.rpgleinc'
/copy 'qrpgleref/P2411.rpgleinc'

dcl-ds T15 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T15 FROM T15 LIMIT 1;

theCharVar = 'Hello from P2960';
dsply theCharVar;
P2286();
P1092();
P2411();
return;