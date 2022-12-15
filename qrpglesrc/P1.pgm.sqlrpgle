**free

ctl-opt dftactgrp(*no);

dcl-pi P1;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T422 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T422 FROM T422 LIMIT 1;

theCharVar = 'Hello from P1';
dsply theCharVar;
P0();
return;