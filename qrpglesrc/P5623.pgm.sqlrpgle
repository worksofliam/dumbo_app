**free

ctl-opt dftactgrp(*no);

dcl-pi P5623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P4880.rpgleinc'
/copy 'qrpgleref/P3107.rpgleinc'

dcl-ds T454 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T454 FROM T454 LIMIT 1;

theCharVar = 'Hello from P5623';
dsply theCharVar;
P80();
P4880();
P3107();
return;