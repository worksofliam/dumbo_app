**free

ctl-opt dftactgrp(*no);

dcl-pi P1933;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P1181.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T1221') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1221 LIMIT 1;

theCharVar = 'Hello from P1933';
dsply theCharVar;
callp localProc();
P274();
P1181();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1933 in the procedure';
end-proc;