**free

ctl-opt dftactgrp(*no);

dcl-pi P5386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1533.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P3465.rpgleinc'

dcl-ds T1751 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1751 FROM T1751 LIMIT 1;

theCharVar = 'Hello from P5386';
dsply theCharVar;
P1533();
P8();
P3465();
return;