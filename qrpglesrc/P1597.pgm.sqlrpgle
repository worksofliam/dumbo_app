**free

ctl-opt dftactgrp(*no);

dcl-pi P1597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P898.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P1212.rpgleinc'

dcl-ds T912 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T912 FROM T912 LIMIT 1;

theCharVar = 'Hello from P1597';
dsply theCharVar;
P898();
P423();
P1212();
return;