**free

ctl-opt dftactgrp(*no);

dcl-pi P486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds T668 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T668 FROM T668 LIMIT 1;

theCharVar = 'Hello from P486';
dsply theCharVar;
P307();
P164();
P361();
return;