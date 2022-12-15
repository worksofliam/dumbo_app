**free

ctl-opt dftactgrp(*no);

dcl-pi P1038;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P555.rpgleinc'
/copy 'qrpgleref/P778.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'

dcl-ds T291 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T291 FROM T291 LIMIT 1;

theCharVar = 'Hello from P1038';
dsply theCharVar;
P555();
P778();
P896();
return;