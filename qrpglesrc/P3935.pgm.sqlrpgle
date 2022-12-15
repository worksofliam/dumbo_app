**free

ctl-opt dftactgrp(*no);

dcl-pi P3935;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3619.rpgleinc'
/copy 'qrpgleref/P2195.rpgleinc'
/copy 'qrpgleref/P1333.rpgleinc'

dcl-ds T1843 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1843 FROM T1843 LIMIT 1;

theCharVar = 'Hello from P3935';
dsply theCharVar;
P3619();
P2195();
P1333();
return;