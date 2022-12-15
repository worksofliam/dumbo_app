**free

ctl-opt dftactgrp(*no);

dcl-pi P216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'

dcl-ds T256 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T256 FROM T256 LIMIT 1;

theCharVar = 'Hello from P216';
dsply theCharVar;
P88();
P8();
P210();
return;