**free

ctl-opt dftactgrp(*no);

dcl-pi P22;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds T331 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T331 FROM T331 LIMIT 1;

theCharVar = 'Hello from P22';
dsply theCharVar;
P6();
P12();
P14();
return;