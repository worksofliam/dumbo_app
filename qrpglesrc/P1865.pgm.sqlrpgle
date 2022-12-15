**free

ctl-opt dftactgrp(*no);

dcl-pi P1865;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P640.rpgleinc'
/copy 'qrpgleref/P1196.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'

dcl-ds T458 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T458 FROM T458 LIMIT 1;

theCharVar = 'Hello from P1865';
dsply theCharVar;
P640();
P1196();
P248();
return;