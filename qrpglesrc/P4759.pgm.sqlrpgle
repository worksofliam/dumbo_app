**free

ctl-opt dftactgrp(*no);

dcl-pi P4759;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1984.rpgleinc'
/copy 'qrpgleref/P1468.rpgleinc'
/copy 'qrpgleref/P1535.rpgleinc'

dcl-ds T474 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T474 FROM T474 LIMIT 1;

theCharVar = 'Hello from P4759';
dsply theCharVar;
P1984();
P1468();
P1535();
return;