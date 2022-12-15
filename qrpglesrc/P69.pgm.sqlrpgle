**free

ctl-opt dftactgrp(*no);

dcl-pi P69;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds T421 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T421 FROM T421 LIMIT 1;

theCharVar = 'Hello from P69';
dsply theCharVar;
P54();
P27();
P15();
return;