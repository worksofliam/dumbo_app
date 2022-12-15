**free

ctl-opt dftactgrp(*no);

dcl-pi P1556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P1243.rpgleinc'
/copy 'qrpgleref/P1007.rpgleinc'

dcl-ds T1659 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1659 FROM T1659 LIMIT 1;

theCharVar = 'Hello from P1556';
dsply theCharVar;
P273();
P1243();
P1007();
return;