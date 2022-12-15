**free

ctl-opt dftactgrp(*no);

dcl-pi P273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'

dcl-ds T246 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T246 FROM T246 LIMIT 1;

theCharVar = 'Hello from P273';
dsply theCharVar;
P6();
P191();
P144();
return;