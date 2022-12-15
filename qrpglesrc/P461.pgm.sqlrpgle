**free

ctl-opt dftactgrp(*no);

dcl-pi P461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T375 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T375 FROM T375 LIMIT 1;

theCharVar = 'Hello from P461';
dsply theCharVar;
P22();
P280();
P8();
return;