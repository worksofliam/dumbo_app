**free

ctl-opt dftactgrp(*no);

dcl-pi P1054;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P467.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'

dcl-ds T1487 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1487 FROM T1487 LIMIT 1;

theCharVar = 'Hello from P1054';
dsply theCharVar;
P467();
P82();
P273();
return;