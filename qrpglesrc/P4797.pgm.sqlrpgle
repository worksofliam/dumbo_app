**free

ctl-opt dftactgrp(*no);

dcl-pi P4797;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3704.rpgleinc'
/copy 'qrpgleref/P1559.rpgleinc'
/copy 'qrpgleref/P3445.rpgleinc'

dcl-ds T227 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T227 FROM T227 LIMIT 1;

theCharVar = 'Hello from P4797';
dsply theCharVar;
P3704();
P1559();
P3445();
return;