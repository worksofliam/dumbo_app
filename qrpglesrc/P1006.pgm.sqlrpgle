**free

ctl-opt dftactgrp(*no);

dcl-pi P1006;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds T249 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T249 FROM T249 LIMIT 1;

theCharVar = 'Hello from P1006';
dsply theCharVar;
P30();
P5();
P102();
return;