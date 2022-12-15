**free

ctl-opt dftactgrp(*no);

dcl-pi P2905;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1933.rpgleinc'
/copy 'qrpgleref/P2461.rpgleinc'
/copy 'qrpgleref/P578.rpgleinc'

dcl-ds T1073 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1073 FROM T1073 LIMIT 1;

theCharVar = 'Hello from P2905';
dsply theCharVar;
P1933();
P2461();
P578();
return;