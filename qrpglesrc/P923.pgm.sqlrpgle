**free

ctl-opt dftactgrp(*no);

dcl-pi P923;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P308.rpgleinc'
/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'

dcl-ds T1012 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1012 FROM T1012 LIMIT 1;

theCharVar = 'Hello from P923';
dsply theCharVar;
P308();
P429();
P466();
return;