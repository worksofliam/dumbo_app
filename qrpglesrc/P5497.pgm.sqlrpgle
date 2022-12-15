**free

ctl-opt dftactgrp(*no);

dcl-pi P5497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3919.rpgleinc'
/copy 'qrpgleref/P5467.rpgleinc'
/copy 'qrpgleref/P5453.rpgleinc'

dcl-ds T1258 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1258 FROM T1258 LIMIT 1;

theCharVar = 'Hello from P5497';
dsply theCharVar;
P3919();
P5467();
P5453();
return;