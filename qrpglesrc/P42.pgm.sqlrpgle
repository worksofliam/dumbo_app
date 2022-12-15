**free

ctl-opt dftactgrp(*no);

dcl-pi P42;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds T151 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T151 FROM T151 LIMIT 1;

theCharVar = 'Hello from P42';
dsply theCharVar;
P15();
P27();
P19();
return;