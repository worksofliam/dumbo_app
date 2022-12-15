**free

ctl-opt dftactgrp(*no);

dcl-pi P3315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2641.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P1010.rpgleinc'

dcl-ds T912 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T912 FROM T912 LIMIT 1;

theCharVar = 'Hello from P3315';
dsply theCharVar;
P2641();
P22();
P1010();
return;